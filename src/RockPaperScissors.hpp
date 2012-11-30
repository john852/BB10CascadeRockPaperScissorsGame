// Default empty project template
#ifndef RockPaperScissors_HPP_
#define RockPaperScissors_HPP_

#include <QObject>
#include <bb/cascades/Application>


using namespace bb::cascades;

namespace bb
{
  namespace cascades
  {
  	class Application;
    class Container;
    class ImageView;
    class Page;
    class TouchEvent;
    class QmlDocument;
  }
}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class RockPaperScissors : public QObject
{
    Q_OBJECT
public:
    RockPaperScissors(bb::cascades::Application *app);
    virtual ~RockPaperScissors() {}

    //start the game
    Q_INVOKABLE
    void startTwoPlayersGame();
    Q_INVOKABLE
    void startFourPlayersGame();



    /**
     * This Invokable function is used for resetting the game
     */
    Q_INVOKABLE
    void resetGame();

private:

    Application *app;
    Page *currPage;
    QmlDocument *tPlayerPage;
    QmlDocument *fPlayerPage;


};


#endif /* RockPaperScissors_HPP_ */
