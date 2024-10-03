.class public final synthetic Lcom/android/quickstep/views/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/r;->g:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/r;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/r;->g:Lcom/android/quickstep/views/RecentsView;

    iget p0, p0, Lcom/android/quickstep/views/r;->h:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->f0(Lcom/android/quickstep/views/RecentsView;I)V

    return-void
.end method
