.class public final synthetic Lcom/android/quickstep/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic h:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public final synthetic i:I

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v0;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/v0;->h:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput p3, p0, Lcom/android/quickstep/v0;->i:I

    iput-boolean p4, p0, Lcom/android/quickstep/v0;->j:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/v0;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/v0;->h:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v2, p0, Lcom/android/quickstep/v0;->i:I

    iget-boolean p0, p0, Lcom/android/quickstep/v0;->j:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->D(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    return-void
.end method
