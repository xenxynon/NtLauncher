.class public final synthetic Lcom/android/launcher3/uioverrides/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

.field public final synthetic h:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/k0;->g:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/k0;->h:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/k0;->g:Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/k0;->h:Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;->m(Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder;Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    return-void
.end method
