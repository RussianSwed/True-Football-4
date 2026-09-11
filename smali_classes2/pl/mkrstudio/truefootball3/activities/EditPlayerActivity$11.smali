.class Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;
.super Landroid/widget/ArrayAdapter;
.source "EditPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;->initSecondPositionSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lpl/mkrstudio/truefootball3/enums/Position;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "resource",
            "objects"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0a00d4

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f080385

    .line 316
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 317
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "-"

    .line 318
    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity$11;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Position;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2
.end method
