import { Button, Modal, ModalBody, ModalFooter, ModalHeader } from 'reactstrap';

export default function ConfirmModal({ isOpen, title, children, confirmText = 'Continue', onConfirm, onCancel, cancelText = 'Go Back' }) {
  const closeModal = onCancel || onConfirm;
  return (
    <Modal isOpen={isOpen} toggle={closeModal} centered labelledBy="confirmation-title" backdrop="static">
      <ModalHeader toggle={closeModal} id="confirmation-title">{title}</ModalHeader>
      <ModalBody id="confirmation-description">{children}</ModalBody>
      <ModalFooter>
        {onCancel && <Button type="button" className="button button-outline" onClick={onCancel}>{cancelText}</Button>}
        <Button type="button" className="button" onClick={onConfirm}>{confirmText}</Button>
      </ModalFooter>
    </Modal>
  );
}
