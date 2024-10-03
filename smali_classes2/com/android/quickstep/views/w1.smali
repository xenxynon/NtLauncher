.class public final synthetic Lcom/android/quickstep/views/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView$20;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$20;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/w1;->g:Lcom/android/quickstep/views/RecentsView$20;

    iput p2, p0, Lcom/android/quickstep/views/w1;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/w1;->g:Lcom/android/quickstep/views/RecentsView$20;

    iget p0, p0, Lcom/android/quickstep/views/w1;->h:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$20;->b(Lcom/android/quickstep/views/RecentsView$20;I)V

    return-void
.end method
