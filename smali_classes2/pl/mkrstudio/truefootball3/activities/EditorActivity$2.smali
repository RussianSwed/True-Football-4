.class Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditorActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

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

    .line 300
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;->this$0:Lpl/mkrstudio/truefootball3/activities/EditorActivity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0035

    .line 302
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 304
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0158

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0803d0

    .line 307
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 308
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08022d

    .line 325
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 326
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2$2;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
