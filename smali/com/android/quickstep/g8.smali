.class public final synthetic Lcom/android/quickstep/g8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/g8;->g:Lcom/android/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/g8;->g:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->onUserUnlocked()V

    return-void
.end method
