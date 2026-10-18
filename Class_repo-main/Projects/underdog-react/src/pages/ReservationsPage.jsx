import { useState } from 'react';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import { Button, Card, Col, Container, Form, FormFeedback, FormGroup, Input, Label, Row } from 'reactstrap';
import PageIntro from '../components/PageIntro.jsx';
import FormField from '../components/FormField.jsx';
import ConfirmModal from '../components/ConfirmModal.jsx';
import { reservationDefaults, reservationSchema, seatingOptions } from '../data/reservationSchema.js';

export default function ReservationsPage() {
  const [guestName, setGuestName] = useState('');
  const { register, handleSubmit, reset, formState: { errors } } = useForm({
    resolver: yupResolver(reservationSchema),
    defaultValues: reservationDefaults,
  });
  const { ref: newsletterRef, ...newsletterRegistration } = register('newsletter');

  function onSubmit(data) {
    setGuestName(data.name);
    reset();
  }

  return (
    <>
      <PageIntro overline="Entry by confirmation" title="Request a Table" note="Tell only your party">
        Reservations are request only because the entrance stays unmarked and the cellar room occasionally moves. This classroom demo validates your request locally; it does not send a booking to a host.
      </PageIntro>
      <Container className="section">
        <Row className="g-4 align-items-start">
          <Col lg="8"><Card className="form-card">
            <div className="form-heading"><p className="overline">Guest ledger</p><h2>Reservation Request</h2></div>
            <p>Fields marked * are required.</p>
            <Form noValidate onSubmit={handleSubmit(onSubmit)}>
              <FormField name="name" label="Name" type="text" autoComplete="name" hint="Maximum 20 characters" required register={register} error={errors.name} />
              <FormField name="email" label="Email" type="email" autoComplete="email" required register={register} error={errors.email} />
              <Row><Col md="6">
                <FormField name="partySize" label="Party Size" type="select" required register={register} error={errors.partySize}>
                  <option value="">Select party size</option>
                  {[1, 2, 3, 4, 5, 6, 7, 8].map((size) => <option key={size} value={size}>{size} {size === 1 ? 'guest' : 'guests'}</option>)}
                </FormField>
              </Col><Col md="6"><FormField name="date" label="Date" type="date" required register={register} error={errors.date} /></Col></Row>
              <FormField name="time" label="Time" type="time" required register={register} error={errors.time} />
              <fieldset aria-describedby={errors.seating ? 'seating-error' : undefined}>
                <legend>Seating Preference <span aria-hidden="true">*</span></legend>
                {seatingOptions.map((option) => {
                  const { ref, ...registration } = register('seating');
                  return <FormGroup check key={option.value} className="mb-2">
                    <Input {...registration} innerRef={ref} id={option.value} type="radio" value={option.value} invalid={Boolean(errors.seating)} aria-invalid={Boolean(errors.seating)} aria-required="true" aria-describedby={errors.seating ? 'seating-error' : undefined} />
                    <Label check for={option.value}>{option.label}</Label>
                  </FormGroup>;
                })}
                {errors.seating && <FormFeedback className="d-block" id="seating-error">{errors.seating.message}</FormFeedback>}
              </fieldset>
              <FormField name="dietaryNotes" label="Dietary Notes (optional)" type="textarea" rows="3" hint="Maximum 30 characters" register={register} error={errors.dietaryNotes} />
              <FormGroup check className="newsletter-choice">
                <Input {...newsletterRegistration} innerRef={newsletterRef} id="newsletter" type="checkbox" />
                <Label check for="newsletter">Send me cellar openings and seasonal menu updates.</Label>
              </FormGroup>
              <div className="form-actions">
                <Button type="submit" className="button">Submit Request</Button>
                <Button type="button" className="button button-outline" onClick={() => reset()}>Reset Form</Button>
              </div>
            </Form>
          </Card></Col>
          <Col lg="4"><aside className="house-card" aria-labelledby="house-rules-heading">
            <p className="overline">House notice</p><h2 id="house-rules-heading">Before You Knock</h2>
            <ul className="house-list"><li>Arrive with your confirmed party.</li><li>Use the entrance phrase once.</li><li>Follow the green lamp downstairs.</li></ul>
            <div className="hours"><h3>Service Hours</h3><p>Tuesday–Sunday</p><p>8:00 a.m.–11:00 p.m.</p><p>Last reservation at 10:00 p.m. Closed Monday.</p></div>
          </aside></Col>
        </Row>
      </Container>
      <ConfirmModal isOpen={Boolean(guestName)} title="Request Confirmed" confirmText="Done" onConfirm={() => setGuestName('')}>
        Thank you, {guestName}! Your reservation request passed validation and the form has been cleared. This is a classroom demo; no reservation has been sent to a restaurant.
      </ConfirmModal>
    </>
  );
}
