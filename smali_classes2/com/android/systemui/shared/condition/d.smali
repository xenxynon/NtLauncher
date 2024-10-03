.class public final synthetic Lcom/android/systemui/shared/condition/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/condition/Monitor;

.field public final synthetic h:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final synthetic i:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

.field public final synthetic j:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/d;->g:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/d;->h:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/d;->i:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iput-object p4, p0, Lcom/android/systemui/shared/condition/d;->j:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/condition/d;->g:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/d;->h:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object v2, p0, Lcom/android/systemui/shared/condition/d;->i:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/d;->j:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/shared/condition/Monitor;->b(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    return-void
.end method
