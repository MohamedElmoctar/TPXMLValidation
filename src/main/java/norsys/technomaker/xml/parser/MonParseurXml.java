package norsys.technomaker.xml.parser;

import java.util.List;

import org.jdom.Document;
import org.jdom.Element;

/**
 * Classe de parcours du fichier XML pour construire l'affichage HTML.
 */
public final class MonParseurXml {

	/**
	 * Constructeur.
	 */
	private MonParseurXml() {
	}

	/**
	 * Cree le corps de la page HTML de la page a partir du fichier XML qui
	 * 
	 * @param document
	 *            fichier XML a parser.
	 * @return String contenant le code HTML de la page avec les donnees du
	 *         fichier XML.
	 */
	@SuppressWarnings("unchecked")
	public static String creerCorpsPageHtml(Document document) {
		// recupere la racine du document ici "messages"
		Element racine = document.getRootElement();
		// la liste des tag message
		List<Element> listMessages = racine.getChildren("message");
		//le tage nombreMessages
		Element nombreMessagesTag = racine.getChild("informationsMessages")
				.getChild("nombreMessages");
		//le tage informationsMessages
		Element datePremierMessageTag = racine.getChild("informationsMessages")
				.getChild("datePremierMessage");

		String reference = "reference";
		String auteur = "auteur";
		String date = "date";
		String contenu = "contenu";
		StringBuilder builder = new StringBuilder();
		builder.append("<html>");
		builder.append("<body>");

		builder.append("<h1>Parseur XML</h1>");
		for (Element message : listMessages) {

			builder.append("<b>Reference :"
					+ message.getAttributeValue(reference) + "</b><br>");
			builder.append("<b>Auteur :" + message.getChild(auteur).getText()
					+ "</b><br>");
			builder.append("<b>Date :" + message.getChild(date).getText()
					+ "</b><br>");
			builder.append("<b>Contenu :" + message.getChild(contenu).getText()
					+ "</b><br>");
			builder.append("--------------------------<br>");
		}

		builder.append("<h2>Les informations des messgaes! </h2><br>");

		builder.append("<b>Le nombre de messages :"
				+ nombreMessagesTag.getText() + "</b><br>");
		builder.append("<b>La date du premier message :"
				+ datePremierMessageTag.getText() + "</b><br>");

		builder.append("</body>");
		builder.append("</html>");

		return builder.toString();
	}
}
