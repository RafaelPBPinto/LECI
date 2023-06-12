import java.awt.Color;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class PerceptionDisplay extends JPanel implements ThermometerListener {
	private JLabel tempLabel;
	
	protected Thermometer thermometer;

	public PerceptionDisplay(Thermometer t) {
		thermometer = t;

		JPanel tempPanel = new JPanel();
		tempLabel = new JLabel(getDisplayString());
		tempLabel.setFont(tempLabel.getFont().deriveFont(20.0f));
		tempPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK));
		tempPanel.add(tempLabel);
		add(tempPanel);
	}

	private String getDisplayString() {
        if (thermometer.getTemperature() < 50)
		    return "COLD!";
		return "HOT!";
	}
	
	@Override
	public void temperatureChanged() {
		tempLabel.setText(getDisplayString());
		repaint();
	}
}
