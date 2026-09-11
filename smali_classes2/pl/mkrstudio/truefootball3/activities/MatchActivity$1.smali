.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initActionButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 463
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    const v0, 0x7f070274

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 464
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-boolean p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    if-eqz p1, :cond_0

    .line 466
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 467
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 468
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :catch_0
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iput-boolean v1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 474
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget v3, v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    int-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const v2, 0x7f07026d

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 480
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 482
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    const v0, 0x7f070276

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 485
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pauseSounds()V

    .line 487
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 489
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const v3, 0x7f07026f

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-byte p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget v3, v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-lt p1, v3, :cond_2

    .line 491
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 492
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 495
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    const v0, 0x7f070273

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 498
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    const v0, 0x7f070275

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method
