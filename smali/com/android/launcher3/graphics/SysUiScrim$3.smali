.class Lcom/android/launcher3/graphics/SysUiScrim$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/SysUiScrim;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/SysUiScrim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOnChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/SysUiScrim;->access$402(Lcom/android/launcher3/graphics/SysUiScrim;Z)Z

    :cond_0
    return-void
.end method

.method public onUserPresent()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/SysUiScrim;->access$402(Lcom/android/launcher3/graphics/SysUiScrim;Z)Z

    return-void
.end method
