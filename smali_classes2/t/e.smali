.class public final synthetic Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

.field public final synthetic h:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/e;->g:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iput-object p2, p0, Lt/e;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lt/e;->g:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object p0, p0, Lt/e;->h:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->d(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V

    return-void
.end method
