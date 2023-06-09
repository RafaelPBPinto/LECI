//Author: Rafael Pinto, 103379, p5_09

package ex3;

import java.util.List;

public abstract class User {
    private ChatMediator mediator;
    private String username;
    protected List<MessageType> permissions;
    private boolean isBlocked = false;

    public User(ChatMediator mediator, String username) {
        this.mediator = mediator;
        this.username = username;
    }

    public boolean hasPermission(MessageType type) {
        return permissions.contains(type);
    }

    public void sendMessage(Message message) {
        mediator.sendMessage(message);
    }

    public String getUsername() {
        return username;
    }

    public void receiveMessage(Message message) {
        System.out.println(message);
    }

    public void block() {
        isBlocked = true;
    }

    public void unblock() {
        isBlocked = false;
    }

    public boolean isBlocked() {
        return isBlocked;
    }
}
