.class public final synthetic Lcom/android/systemui/shared/condition/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/condition/Monitor;

.field public final synthetic h:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/g;->g:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/g;->h:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/condition/g;->g:Lcom/android/systemui/shared/condition/Monitor;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/g;->h:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    check-cast p1, Lcom/android/systemui/shared/condition/Condition;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/shared/condition/Monitor;->e(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Condition;)V

    return-void
.end method
