.class public final synthetic Lcom/android/launcher3/uioverrides/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

.field public final synthetic h:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/n0;->g:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/n0;->h:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/n0;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/n0;->g:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/n0;->h:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/n0;->i:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;->b(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$QuickstepWidgetHolderListener;Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$UpdateKey;Ljava/lang/Object;)V

    return-void
.end method
