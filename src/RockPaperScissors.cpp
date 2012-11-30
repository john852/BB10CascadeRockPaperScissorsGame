// Default empty project template
#include "RockPaperScissors.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>


#include <bb/cascades/Color>
#include <bb/cascades/Container>
#include <bb/cascades/DockLayout>
#include <bb/cascades/ImageView>
#include <bb/cascades/ImagePaint>
#include <bb/cascades/RepeatPattern>
#include <bb/cascades/Page>
#include <bb/cascades/Slider>
#include <bb/cascades/Stacklayout>
#include <bb/cascades/StackLayoutProperties>

#include <QUrl>


using namespace bb::cascades;

//struct {
//	string name;
//}user, player2, player3, player4 ;

RockPaperScissors::RockPaperScissors(bb::cascades::Application *app)
: QObject(app)
{
	// create scene document from main.qml asset
	// set parent to created document to ensure it exists for the whole application lifetime
	QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
//	fPlayerPage = QmlDocument::create("asset:///fourPlayersGamePage.qml");
//	tPlayerPage = QmlDocument::create("asset:///twoPlayerGamePage.qml");


	if (!qml->hasErrors()) {

		// Set the context property we want to use from inside the QML file. Functions exposed
		// via Q_INVOKABLE will be found with the property and the name of the function.
		qml->setContextProperty("rps", this);
//		fPlayerPage->setContextProperty("rps", this);
//		tPlayerPage->setContextProperty("rps", this);



		// create root object for the UI
		currPage = qml->createRootObject<Page>();
		// set created root object as a scene
		app->setScene(currPage);
	}

}

void RockPaperScissors::startTwoPlayersGame() {

//	// create root object for the UI
//	currPage = tPlayerPage->createRootObject<Page>();
//	// set created root object as a scene
//	app->setScene(currPage);

}

void RockPaperScissors::startFourPlayersGame() {

//	// create root object for the UI
//	currPage = fPlayerPage->createRootObject<Page>();
//	// set created root object as a scene
//	app->setScene(currPage);
}

void RockPaperScissors::resetGame() {

}

//KakelApp::KakelApp()
//{
//
//  // Create and Load the QMLDocument, using build patterns.
//  QmlDocument *qml = QmlDocument::create("asset:///main.qml");
//
//  if (!qml->hasErrors()) {
//
//    setNumMoves(0);
//    mNumTiles = 4;
//
//    // Set the context property we want to use from inside the QML file. Functions exposed
//    // via Q_INVOKABLE will be found with the property and the name of the function.
//    qml->setContextProperty("kakel", this);
//
//    // The application Page is created from the QML file.
//    mAppPage = qml->createRootObject<Page>();
//
//    findPlayAreaAndInitialize(mAppPage);
//
//    if (mAppPage) {
//      // Finally the main scene for the application is set to the Page.
//      Application::instance()->setScene(mAppPage);
//    }
//  }
//}

