.class Lpl/mkrstudio/truefootball3/activities/MainActivity$11;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1084
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1086
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1088
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1089
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    .line 1090
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1091
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0042

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1092
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1093
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1095
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MainActivity;->loadingDialog:Landroid/app/Dialog;

    const v0, 0x7f0801eb

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0c055c

    .line 1096
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1098
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MainActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/MainActivity;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;->saveRunnable:Ljava/lang/Runnable;

    const-wide/32 v5, 0x10000

    const-string v4, "Save Thread"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
