.class public final synthetic Lcom/android/quickstep/views/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic h:Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/v;->g:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/v;->h:Lcom/android/quickstep/views/TaskThumbnailView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/v;->g:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/v;->h:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->B(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void
.end method
