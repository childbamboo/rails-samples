class PageController < ApplicationController
  def do_scrape
    Scrape.delay.bps_global_navi #非同期化したいメソッドの前にdelayを追加するだけです。
    render :text => '処理を開始しました。'
  end
end
