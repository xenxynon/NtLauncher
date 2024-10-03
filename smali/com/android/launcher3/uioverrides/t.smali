.class public final synthetic Lcom/android/launcher3/uioverrides/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/t;->g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/t;->g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->g0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-void
.end method
