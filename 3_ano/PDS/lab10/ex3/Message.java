//Author: Rafael Pinto, 103379, p5_09

package ex3;

public class Message {
    private String message;
    private MessageType type;
    private User sender;
    private User receiver;

    public Message(MessageType type, String message, User sender, User receiver) {
        this.type = type;
        this.message = message;
        this.sender = sender;
        this.receiver = receiver;
    }

    public MessageType getType() {
        return type;
    }

    public String getMessage() {
        return message;
    }

    public User getSender() {
        return sender;
    }

    public User getReceiver() {
        return receiver;
    }

    @Override
    public String toString() {
        if (type == MessageType.NORMAL)
            return String.format(sender.getUsername() + " sent message: \"" + message + "\" to " + receiver.getUsername());
        if (type == MessageType.BLOCK)
            return String.format(sender.getUsername() + " blocked " + receiver.getUsername() + ": \"" + message + "\"");
        if (type == MessageType.UNBLOCK)
            return String.format(sender.getUsername() + " unblocked " + receiver.getUsername() + ": \"" + message + "\"");
        return "";
    }
}
