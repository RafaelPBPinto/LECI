// Author: Rafael Pinto, 103379, p5_09

import javax.swing.*;

import startypes.StarType;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public class Sky extends JFrame {
    private List<StarType> stars = new ArrayList<>();
    static int CANVAS_SIZE = 1200;

    public void placeStar(StarType star) {
        stars.add(star);
    }

    @Override
    public void paint(Graphics graphics) {
        for (StarType star : stars) {
            int x = random(0, CANVAS_SIZE);
            int y = random(0, CANVAS_SIZE);
            star.draw(graphics, x, y);
        }
    }

    private static int random(int min, int max) {
        return min + (int) (Math.random() * ((max - min) + 1));
    }
}