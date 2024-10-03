.class public final synthetic Lcom/android/quickstep/s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/s5;->g:I

    iput-object p2, p0, Lcom/android/quickstep/s5;->h:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/s5;->g:I

    iget-object p0, p0, Lcom/android/quickstep/s5;->h:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/RecentsModel;->b(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method
