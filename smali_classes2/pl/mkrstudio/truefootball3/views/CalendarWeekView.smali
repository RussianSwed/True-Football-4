.class public Lpl/mkrstudio/truefootball3/views/CalendarWeekView;
.super Landroid/widget/LinearLayout;
.source "CalendarWeekView.java"


# instance fields
.field day1:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field day2:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field day3:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field day4:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field day5:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field day6:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field day7:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field days:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrSet"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    const p2, 0x7f0a00db

    .line 30
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    const p1, 0x7f08013c

    .line 33
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day1:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const p1, 0x7f08013d

    .line 34
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day2:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const p1, 0x7f08013e

    .line 35
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day3:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const p1, 0x7f08013f

    .line 36
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day4:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const p1, 0x7f080140

    .line 37
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day5:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const p1, 0x7f080141

    .line 38
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day6:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const p1, 0x7f080142

    .line 39
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day7:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 p2, 0x7

    new-array p2, p2, [Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day1:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day2:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aput-object v1, p2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day3:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aput-object v1, p2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day4:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aput-object v1, p2, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day5:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aput-object v1, p2, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->day6:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aput-object v1, p2, v0

    const/4 v0, 0x6

    aput-object p1, p2, v0

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->days:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    return-void
.end method


# virtual methods
.method public addOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "onClickListener"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->days:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDay(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "day"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->days:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object p1, v0, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDayBackgroundColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "color"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->days:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setBackgroundColor(I)V

    return-void
.end method

.method public setDayTextColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "color"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->days:[Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextColor(I)V

    return-void
.end method
