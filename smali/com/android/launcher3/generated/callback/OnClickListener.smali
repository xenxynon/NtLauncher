.class public final Lcom/android/launcher3/generated/callback/OnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/generated/callback/OnClickListener$Listener;
    }
.end annotation


# instance fields
.field final mListener:Lcom/android/launcher3/generated/callback/OnClickListener$Listener;

.field final mSourceId:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/generated/callback/OnClickListener$Listener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/generated/callback/OnClickListener;->mListener:Lcom/android/launcher3/generated/callback/OnClickListener$Listener;

    iput p2, p0, Lcom/android/launcher3/generated/callback/OnClickListener;->mSourceId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/generated/callback/OnClickListener;->mListener:Lcom/android/launcher3/generated/callback/OnClickListener$Listener;

    iget p0, p0, Lcom/android/launcher3/generated/callback/OnClickListener;->mSourceId:I

    invoke-interface {v0, p0, p1}, Lcom/android/launcher3/generated/callback/OnClickListener$Listener;->_internalCallbackOnClick(ILandroid/view/View;)V

    return-void
.end method
