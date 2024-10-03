.class public final synthetic Lcom/nothing/cardwidget/battery/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/battery/view/BatteryContainerView;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/d;->g:Lcom/nothing/cardwidget/battery/view/BatteryContainerView;

    iput-object p2, p0, Lcom/nothing/cardwidget/battery/view/d;->h:Landroid/view/View;

    iput-object p3, p0, Lcom/nothing/cardwidget/battery/view/d;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/battery/view/d;->g:Lcom/nothing/cardwidget/battery/view/BatteryContainerView;

    iget-object v1, p0, Lcom/nothing/cardwidget/battery/view/d;->h:Landroid/view/View;

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->b(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
