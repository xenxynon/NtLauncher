.class public final synthetic Lcom/android/launcher3/uioverrides/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field public final synthetic h:Lcom/android/quickstep/util/GroupTask;

.field public final synthetic i:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/u;->g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/u;->h:Lcom/android/quickstep/util/GroupTask;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/u;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/u;->g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/u;->h:Lcom/android/quickstep/util/GroupTask;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/u;->i:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->d0(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)V

    return-void
.end method
