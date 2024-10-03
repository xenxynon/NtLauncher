.class public final synthetic Lcom/android/quickstep/h9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic h:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/h9;->g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-object p2, p0, Lcom/android/quickstep/h9;->h:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/h9;->g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object p0, p0, Lcom/android/quickstep/h9;->h:Landroid/graphics/Region;

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->n0(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V

    return-void
.end method
