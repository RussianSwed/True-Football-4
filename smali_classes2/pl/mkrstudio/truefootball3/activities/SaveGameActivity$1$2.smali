.class Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;
.super Ljava/lang/Object;
.source "SaveGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;I)V
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

    .line 230
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->val$i:I

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

    .line 233
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->val$i:I

    .line 234
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 238
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iput p1, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savePosition:I

    .line 240
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    .line 241
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 242
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    const v0, 0x7f0a0042

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 243
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 244
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 246
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->loadingDialog:Landroid/app/Dialog;

    const v0, 0x7f0801eb

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0c055c

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 249
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveRunnable:Ljava/lang/Runnable;

    const-wide/32 v5, 0x10000

    const-string v4, "Save Thread"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 250
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
