//: # Exam Prep 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

let canvas = Canvas(width: 400, height: 600)
canvas.fillColor = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)


// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

//Draw text
let kerningDefault : Float = -0.4
canvas.textColor = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)
canvas.drawText(message: "straight music presents", size: 10, x: 15, y: 555, kerning: kerningDefault)
canvas.drawText(message: "the undertones", size: 10, x: 15, y: 545, kerning: kerningDefault)
canvas.drawText(message: "with special guests", size: 10, x: 15, y: 525, kerning: kerningDefault)
canvas.drawText(message: "the chords", size: 10, x: 15, y: 515, kerning: kerningDefault)

canvas.drawText(message: "victoria hall hanley", size: 10, x: 150, y: 555, kerning: kerningDefault)
canvas.drawText(message: "stoke-on-trent, england", size: 10, x: 150, y: 545, kerning: kerningDefault)
canvas.drawText(message: "tuesday", size: 10, x: 150, y: 525, kerning: kerningDefault)
canvas.drawText(message: "june 5 1979/7:30 pm", size: 10, x: 150, y: 515, kerning: kerningDefault)
canvas.drawText(message: "advance tickets: £2.00", size: 10, x: 285, y: 555, kerning: kerningDefault)
canvas.drawText(message: "at the door: £2.50", size: 10, x: 285, y: 545, kerning: kerningDefault)

//Shift orgin
canvas.translate(byX: 25, byY: 380)

//canvas.drawAxes
canvas.drawAxes()


// Draw undertones
canvas.textColor = Color.black

canvas.drawText(message: "undertones", size: 65, x: 0, y: -37, kerning: 0)
canvas.rotate(by: 4.7)

//Loop 19 times
for i in 1...19 {
    //Rotate
    canvas.rotate(by: -5)
    
    //dRAW TEXT
    canvas.drawText(message: "undertones", size: 65, x: 0, y: -37, kerning: 0)
    
    //Fade
    
}

/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
