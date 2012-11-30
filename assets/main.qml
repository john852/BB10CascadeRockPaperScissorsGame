// Default empty project template
import bb.cascades 1.0

NavigationPane {
    
    id : navPane;
    
    // creates one page with a label
    Page {
        
        id : titlePage;
        
        Container {
            id : mainContainer;
            
            background: backgroundImage.imagePaint
            attachedObjects: [
                ImagePaintDefinition {
                    id: backgroundImage
                    repeatPattern: RepeatPattern.Fill
                    imageSource: "asset:///images/background/greenB2.amd"
                }
            ]
            
            Label {
                id : title
                text:  "Rock-Paper-Scissors-"   
                textStyle.base: SystemDefaults.TextStyles.BigText
                textStyle.fontSize: FontSize.XXLarge
                //                textStyle.fontSizeValue: 10.0
                
                textStyle.fontWeight: FontWeight.W900
                textStyle.color: Color.create(1, 1, 1)
                horizontalAlignment: HorizontalAlignment.Center
            }
            Label {
                id : title2
                text:  "Hand-Hammer"   
                textStyle.base: SystemDefaults.TextStyles.BigText
                textStyle.fontSize: FontSize.XXLarge
                //                textStyle.fontSizeValue: 10.0
                
                textStyle.fontWeight: FontWeight.W900
                textStyle.color: Color.create(1, 1, 1)
                horizontalAlignment: HorizontalAlignment.Center
            }
            
            
            // First Button
            Button  {
                id: twoPlayerButton
                text: "Two Players"
                //                imageSource: "asset:///images/background/greenB2.amd"
                horizontalAlignment: HorizontalAlignment.Center
                
                onClicked: {
                    //start two players game
//                    rps.startTwoPlayersGame();
                    
                    // Create the content page and push it on top to drill down to it.
                    var page = twoPlayerGamePageCreation.createObject();                    
                    navPane.push(page);
                }
                
                attachedObjects: [
                    // This is the definition of the Content page used to create a page in the onClicked signal-handler above. 
                    ComponentDefinition {
                        id: twoPlayerGamePageCreation
                        source: "twoPlayerGamePage.qml"
                    }
                ]                
            }
            
            // Second Button
            Button  {
                id: fourPlayerButton
                text: "Four Players"
                //imageSource: "asset:///myImage.png"                
                horizontalAlignment: HorizontalAlignment.Center
                
                onClicked: {
                    //start four players game
//                    rps.startFourPlayersGame();
                    
                    // Create the content page and push it on top to drill down to it.
                    var page = fourPlayersGamePageCreation.createObject();                    
                    navPane.push(page);
                }  
                
                attachedObjects: [
                    // This is the definition of the Content page used to create a page in the onClicked signal-handler above. 
                    //    attachedObjects: [
                    // This is the definition of the Content page used to create a page in the onClicked signal-handler above. 
                    ComponentDefinition {
                        id: fourPlayersGamePageCreation
                        source: "fourPlayersGamePage.qml"
                    }
                ]              
            }
            
            // Config Button
            Button  {
                id: configButton
                text: "Configurations"
                //imageSource: "asset:///myImage.png"                
                horizontalAlignment: HorizontalAlignment.Center
                
                onClicked: {
                    
                    // Create the content page and push it on top to drill down to it.
                    //                    var page = fourPlayersGamePageCreation.createObject();                    
                    //                    navPane.push(page);
                }                
            }
        
        }
    }
    
    onPopTransitionEnded: {
        // Transition is done destory the Page to free up memory.
        page.destroy();
    }    

}

