.class public final synthetic Lcom/android/quickstep/views/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/s;->g:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/s;->h:I

    iput p3, p0, Lcom/android/quickstep/views/s;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/s;->g:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/s;->h:I

    iget p0, p0, Lcom/android/quickstep/views/s;->i:I

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView;->T(Lcom/android/quickstep/views/RecentsView;II)V

    return-void
.end method
