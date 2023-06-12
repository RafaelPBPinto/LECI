//Author: Rafael Pinto, 103379, p5_09

package ex3;

import java.util.List;

public class ModeratorUser extends User {
    public ModeratorUser(ChatMediator mediator, String username) {
        super(mediator, username);
        this.permissions = List.of(MessageType.NORMAL, MessageType.BLOCK, MessageType.UNBLOCK);
    }
}
