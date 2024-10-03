.class public final synthetic Lcom/android/launcher3/uioverrides/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field public final synthetic h:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

.field public final synthetic i:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/i;->g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/i;->h:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/i;->i:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/i;->g:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/i;->h:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/i;->i:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->T(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
