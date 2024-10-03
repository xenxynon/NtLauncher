.class public final synthetic Lcom/android/quickstep/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t8;->g:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/t8;->g:Landroid/graphics/Region;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->d0(Landroid/graphics/Region;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
