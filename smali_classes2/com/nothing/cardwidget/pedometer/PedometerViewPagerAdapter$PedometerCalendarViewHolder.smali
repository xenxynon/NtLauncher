.class public final Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PedometerCalendarViewHolder"
.end annotation


# instance fields
.field private final pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

.field final synthetic this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/nothing/cardwidget/R$id;->pedometer_calendar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.pedometer_calendar)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/nothing/cardwidget/pedometer/PedometerData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->this$0:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    invoke-static {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->access$getWidthRatio$p(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->setFixRatio(F)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getCurrentDayColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->setCurrentDayColor(I)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getGoalReachedColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->setGoalReachedColor(I)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getGoalNotReachedColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->setGoalNotReachedColor(I)V

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;->getWeeklyDesColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->setWeeklyDesColor(I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerCalendarViewHolder;->pedometerCalendar:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;

    check-cast p1, Lcom/nothing/cardwidget/pedometer/MonthStepsData;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/MonthStepsData;->getMonthStepsList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->onDataChanged(Ljava/util/List;)V

    :cond_1
    return-void
.end method
