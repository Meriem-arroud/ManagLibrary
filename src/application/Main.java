package application;

import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.fxml.FXMLLoader;
import javafx.stage.StageStyle;

public class Main extends Application {
	@Override
	public void start(Stage Stage) {
		try {
			Parent root = FXMLLoader.load(getClass().getResource("/view/FirstPage.fxml"));
			Scene scene = new Scene(root);
		     Stage.initStyle(StageStyle.TRANSPARENT);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			Stage.setScene(scene);
			Stage.setTitle("Home");
			Stage.show();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		launch(args);
	}
}
