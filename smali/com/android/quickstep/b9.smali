.class public final synthetic Lcom/android/quickstep/b9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/quickstep/b9;->g:Z

    iput-boolean p2, p0, Lcom/android/quickstep/b9;->h:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/b9;->g:Z

    iget-boolean p0, p0, Lcom/android/quickstep/b9;->h:Z

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->U(ZZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
