package controller;

import java.net.URL;
import java.sql.SQLException;
import java.util.Date;
import java.util.ResourceBundle;

import database.DB;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import model.CompteId;
import model.LivreEmprunte;

public class MesLivresEmpruntes implements Initializable {

	ObservableList<LivreEmprunte> List = FXCollections.observableArrayList();

	@FXML
	private TableView<LivreEmprunte> livreEmprunteTab;
	@FXML
	private TableColumn<LivreEmprunte, Integer> idLivreCol;
	@FXML
	private TableColumn<LivreEmprunte, String> titreCol;

	@FXML
	private TableColumn<LivreEmprunte, String> auteurCol;

	@FXML
	private TableColumn<LivreEmprunte, String> themeCol;

	@FXML
	private TableColumn<LivreEmprunte, Date> dateEmpruntCol;

	@FXML
	private TableColumn<LivreEmprunte, Date> dateRetourCol;
	
	int ID = CompteId.getUser().getId();

	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		initialiserCol();
		consulterLivresEmpruntes();
	}
	 /**********************************************************
     * Initialiser les colonnes de la table des livres emprunt�s
     ************************************************************/
	private void initialiserCol() {

		idLivreCol.setCellValueFactory(new PropertyValueFactory<LivreEmprunte, Integer>("idLiv"));
		titreCol.setCellValueFactory(new PropertyValueFactory<LivreEmprunte, String>("titre"));
		auteurCol.setCellValueFactory(new PropertyValueFactory<LivreEmprunte, String>("auteur"));
		themeCol.setCellValueFactory(new PropertyValueFactory<LivreEmprunte, String>("theme"));
		dateEmpruntCol.setCellValueFactory(new PropertyValueFactory<LivreEmprunte, Date>("dateEmprunt"));
		dateRetourCol.setCellValueFactory(new PropertyValueFactory<LivreEmprunte, Date>("dateRetour"));
	}

	/*****************************************************
	 * Affichage des livres emprunt�s par un seul �tudiant
	 *****************************************************/
	private void consulterLivresEmpruntes() {
		try {
			DB.connect();
			// affichage de tous les donn�es de la table livresempruntes en se basant sur
			// l'id de l'�tudiant connect�
			DB.ps = DB.conn.prepareStatement("select * from livresempruntes where etudiantID = " + ID + "");
			DB.rs = DB.ps.executeQuery();

			while (DB.rs.next()) {
				Integer IDLivre = DB.rs.getInt("livreID");
				String Titre = DB.rs.getString("titre");
				String Auteur = DB.rs.getString("auteur");
				String Theme = DB.rs.getString("theme");
				Date DateEmprunt = DB.rs.getTimestamp("dateEmprunt");
				Date DateRetour = DB.rs.getDate("dateRetour");

				List.add(new LivreEmprunte(IDLivre, Titre, Auteur, Theme, DateEmprunt, DateRetour));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		livreEmprunteTab.setItems(List);
	}


}
