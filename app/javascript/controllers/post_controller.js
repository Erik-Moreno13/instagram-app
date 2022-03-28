import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the Post Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  connect () {
    super.connect()
    // add your code here, if applicable
  }

  changeColorLike(event){
    const userId = event.target.dataset.user_id
    console.log(userId)
  }

}
