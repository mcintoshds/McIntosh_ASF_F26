import * as yup from 'yup';

export const reservationDefaults = {
  name: '', email: '', partySize: '', date: '', time: '', seating: '', dietaryNotes: '', newsletter: false,
};

export const seatingOptions = [
  { value: 'cellar-booth', label: 'Main cellar booth' },
  { value: 'boiler-table', label: 'Boiler-room table' },
  { value: 'lamp-counter', label: 'Green-lamp counter' },
];

export const reservationSchema = yup.object({
  name: yup.string().trim().required('Please enter your name.').max(20, 'Name must be 20 characters or fewer.'),
  email: yup.string().trim().required('Please enter your email.').email('Please enter a valid email address.'),
  partySize: yup.number().transform((value, originalValue) => originalValue === '' ? undefined : value)
    .typeError('Choose a party size from 1 to 8.').required('Please choose a party size.')
    .integer('Party size must be a whole number.').min(1, 'Party size must be at least 1.').max(8, 'Party size cannot exceed 8.'),
  date: yup.string().required('Please choose a date.'),
  time: yup.string().required('Please choose a time.'),
  seating: yup.string().required('Please choose a seating preference.')
    .test('seating-option', 'Please choose one of the seating options.', (value) => !value || seatingOptions.some((option) => option.value === value)),
  dietaryNotes: yup.string().max(30, 'Dietary notes must be 30 characters or fewer.'),
  newsletter: yup.boolean(),
});
