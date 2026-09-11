.class Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;
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

    .line 194
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iput p2, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 198
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;->this$1:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->act:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0035

    .line 200
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 202
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0159

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0803d0

    .line 205
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 206
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1$1;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 214
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 215
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1$2;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
