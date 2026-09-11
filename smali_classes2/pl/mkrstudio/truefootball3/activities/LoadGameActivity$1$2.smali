.class Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;
.super Ljava/lang/Object;
.source "LoadGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 261
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->val$i:I

    iput v0, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadPosition:I

    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    .line 264
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 265
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0042

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 266
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 267
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 269
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadingDialog:Landroid/app/Dialog;

    const v0, 0x7f0801eb

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0c039e

    .line 270
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 272
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadRunnable:Ljava/lang/Runnable;

    const-string v4, "Load Thread"

    const-wide/32 v5, 0x10000

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 273
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
