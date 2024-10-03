.class public final synthetic Lcom/nothing/cardwidget/battery/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/f;->g:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/f;->g:Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/f;->h:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;->b(Lcom/nothing/cardwidget/battery/view/BatterySmallContainerView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
