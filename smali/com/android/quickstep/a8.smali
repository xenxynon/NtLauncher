.class public final synthetic Lcom/android/quickstep/a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:[Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic i:I

.field public final synthetic j:[I


# direct methods
.method public synthetic constructor <init>(I[Lcom/android/systemui/shared/recents/model/Task;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/a8;->g:I

    iput-object p2, p0, Lcom/android/quickstep/a8;->h:[Lcom/android/systemui/shared/recents/model/Task;

    iput p3, p0, Lcom/android/quickstep/a8;->i:I

    iput-object p4, p0, Lcom/android/quickstep/a8;->j:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/quickstep/a8;->g:I

    iget-object v1, p0, Lcom/android/quickstep/a8;->h:[Lcom/android/systemui/shared/recents/model/Task;

    iget v2, p0, Lcom/android/quickstep/a8;->i:I

    iget-object p0, p0, Lcom/android/quickstep/a8;->j:[I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->a(I[Lcom/android/systemui/shared/recents/model/Task;I[ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
