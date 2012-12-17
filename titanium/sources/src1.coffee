win = Ti.UI.createWindow({title: 'Home'})
btn = Ti.UI.createButton({title: 'nextWindow'})
win.add(btn)
win.open()
btn.addEventListener 'click', =>
  nextWin = Ti.UI.createWindow({title: 'Next'})
  nextWin.open()



controller1 = new HomeViewController
controller1.open()

controller1.view.on 'click:button', =>
  controller2 = new NextViewController
  controller1.presentViewController(controller2)


# app.js
Ti.App.addEventListener 'calculated', (params) ->
  alert("計算終了! #{params.total}")

# calc.js
btn = Ti.UI.createButton({title: '計算'})
btn.addEventListener 'click', =>
  # 計算処理...
  Ti.App.fireEvent('calculated', {total: xxx})



calc = new Calclator
calc.on 'calculated', ->
  alert("計算終了! #{@total}")

btn = Ti.UI.createButton({title: '計算'})
btn.addEventListener 'click', =>
  # 計算処理...
  calc.calculate(10, 20)  



db = Ti.Database.open('mydb')
rows = db.execute('SELECT * FROM hoge WHERE id = ?', id)
# ...
db.execute('INSERT INTO hoge (txt) values (?)', 'foobar')
db.close()