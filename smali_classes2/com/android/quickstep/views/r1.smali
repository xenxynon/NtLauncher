.class public final synthetic Lcom/android/quickstep/views/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/RecentsView$12;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$12;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/r1;->g:Lcom/android/quickstep/views/RecentsView$12;

    iput p2, p0, Lcom/android/quickstep/views/r1;->h:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/r1;->g:Lcom/android/quickstep/views/RecentsView$12;

    iget p0, p0, Lcom/android/quickstep/views/r1;->h:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView$12;->c(Lcom/android/quickstep/views/RecentsView$12;ILjava/lang/Boolean;)V

    return-void
.end method
