.class public final synthetic Lcom/android/quickstep/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsActivity;

.field public final synthetic h:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i4;->g:Lcom/android/quickstep/RecentsActivity;

    iput-object p2, p0, Lcom/android/quickstep/i4;->h:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/i4;->g:Lcom/android/quickstep/RecentsActivity;

    iget-object p0, p0, Lcom/android/quickstep/i4;->h:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsActivity;->u(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method
