import { FormFeedback, FormGroup, FormText, Input, Label } from 'reactstrap';

export default function FormField({ name, label, register, error, required = false, hint, children, ...inputProps }) {
  const { ref, ...registration } = register(name);
  const descriptionIds = [hint && `${name}-hint`, error && `${name}-error`].filter(Boolean).join(' ') || undefined;
  return (
    <FormGroup>
      <Label for={name}>{label}{required && <span aria-hidden="true"> *</span>}</Label>
      <Input {...inputProps} {...registration} innerRef={ref} id={name} invalid={Boolean(error)} aria-invalid={Boolean(error)} aria-required={required} aria-describedby={descriptionIds}>{children}</Input>
      {hint && <FormText id={`${name}-hint`}>{hint}</FormText>}
      {error && <FormFeedback id={`${name}-error`}>{error.message}</FormFeedback>}
    </FormGroup>
  );
}
