//Author: Rafael Pinto, 103379, p5_09

package ex3;

import java.util.List;

public class CommonUser extends User {
    public CommonUser(ChatMediator mediator, String username) {
        super(mediator, username);
        this.permissions = List.of(MessageType.NORMAL);
    }
}
