/**
 * @fileOverview app.js
 * @author Aristotle Rovithis & Karen Springford
 * @description Custom JavaScript for Sport Tracking app
 * @version 0.0.2
 */

$(document).ready(function () {
    console.log('app started');
    $('a.btn.btn-danger.btn-sm').click(function () {
        return confirm('Are you sure you want to delete?');
    })
})