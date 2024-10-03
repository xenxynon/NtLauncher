.class public final synthetic Lcom/android/quickstep/views/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/views/n1;->g:I

    iput p2, p0, Lcom/android/quickstep/views/n1;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/n1;->g:I

    iget p0, p0, Lcom/android/quickstep/views/n1;->h:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->k(II)V

    return-void
.end method
