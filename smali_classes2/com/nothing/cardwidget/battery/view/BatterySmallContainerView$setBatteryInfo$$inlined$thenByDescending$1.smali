.class public final Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->setBatteryInfo(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# instance fields
.field final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView$setBatteryInfo$$inlined$thenByDescending$1;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lm2/a;

    invoke-virtual {p2}, Lm2/a;->o()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lm2/a;

    invoke-virtual {p1}, Lm2/a;->o()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lp5/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_0
    return p0
.end method