.class public final synthetic Lcom/android/quickstep/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/MultiStateCallback;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/MultiStateCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/w2;->g:Lcom/android/quickstep/MultiStateCallback;

    iput p2, p0, Lcom/android/quickstep/w2;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/w2;->g:Lcom/android/quickstep/MultiStateCallback;

    iget p0, p0, Lcom/android/quickstep/w2;->h:I

    invoke-static {v0, p0}, Lcom/android/quickstep/MultiStateCallback;->a(Lcom/android/quickstep/MultiStateCallback;I)V

    return-void
.end method
