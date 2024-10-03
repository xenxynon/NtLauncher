.class public final synthetic Lcom/nothing/cardwidget/battery/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/battery/view/BatteryContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/view/c;->g:Lcom/nothing/cardwidget/battery/view/BatteryContainerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/view/c;->g:Lcom/nothing/cardwidget/battery/view/BatteryContainerView;

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView;->a(Lcom/nothing/cardwidget/battery/view/BatteryContainerView;Landroid/view/View;)V

    return-void
.end method
