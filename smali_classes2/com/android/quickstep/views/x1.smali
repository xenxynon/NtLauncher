.class public final synthetic Lcom/android/quickstep/views/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView$20;

.field public final synthetic h:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$20;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/x1;->g:Lcom/android/quickstep/views/RecentsView$20;

    iput-object p2, p0, Lcom/android/quickstep/views/x1;->h:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/x1;->g:Lcom/android/quickstep/views/RecentsView$20;

    iget-object p0, p0, Lcom/android/quickstep/views/x1;->h:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$20;->a(Lcom/android/quickstep/views/RecentsView$20;Ljava/lang/Boolean;)V

    return-void
.end method
