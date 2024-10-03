.class public Lcom/nothing/cardservice/CardWidgetMetaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nothing/cardservice/CardWidgetMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Landroid/content/ComponentName;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardservice/CardWidgetMetaInfo$a;

    invoke-direct {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo$a;-><init>()V

    sput-object v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/nothing/cardservice/CardWidgetMetaInfo;-><init>(ILjava/lang/String;IIIILjava/lang/String;IIIIIIIIIIILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIILjava/lang/String;IIIIIIIIIIILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p7

    const-string v3, "pkgName"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authority"

    invoke-static {p7, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    iput v3, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->g:I

    iput-object v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i:I

    move v1, p4

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->j:I

    move v1, p5

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->k:I

    move v1, p6

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->l:I

    iput-object v2, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    move v1, p8

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->n:I

    move v1, p9

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->o:I

    move v1, p10

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p:I

    move v1, p11

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q:I

    move/from16 v1, p12

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r:I

    move/from16 v1, p13

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->s:I

    move/from16 v1, p14

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->t:I

    move/from16 v1, p15

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->u:I

    move/from16 v1, p16

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v:I

    move/from16 v1, p17

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w:I

    move/from16 v1, p18

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y:Ljava/lang/String;

    move/from16 v1, p20

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->z:I

    move/from16 v1, p21

    iput v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->A:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->B:Landroid/content/ComponentName;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->C:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->D:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->E:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x:I

    return-void
.end method

.method public final B(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->g:I

    return-void
.end method

.method public final C(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i:I

    return-void
.end method

.method public final D(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w:I

    return-void
.end method

.method public final E(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r:I

    return-void
.end method

.method public final F(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q:I

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y:Ljava/lang/String;

    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->C:Ljava/lang/String;

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->D:Ljava/lang/String;

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->E:Ljava/lang/String;

    return-void
.end method

.method public final K(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->o:I

    return-void
.end method

.method public final L(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p:I

    return-void
.end method

.method public final M(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->n:I

    return-void
.end method

.method public final N(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v:I

    return-void
.end method

.method public final O(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->u:I

    return-void
.end method

.method public final P(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->t:I

    return-void
.end method

.method public final Q(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->A:I

    return-void
.end method

.method public final R(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->s:I

    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public final T(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->j:I

    return-void
.end method

.method public final U(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->B:Landroid/content/ComponentName;

    return-void
.end method

.method public final V(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->z:I

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->g:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i:I

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.packageManager.g\u2026esForApplication(pkgName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardWidgetMetaInfo getCardName error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, ""

    :cond_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    check-cast p1, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    iget-object p1, p1, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->C:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->D:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->E:Ljava/lang/String;

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->o:I

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p:I

    return p0
.end method

.method public final o(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.packageManager.g\u2026esForApplication(pkgName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, ""

    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->n:I

    return p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v:I

    return p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->u:I

    return p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->t:I

    return p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->A:I

    return p0
.end method

.method public final u()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->s:I

    return p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final w()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->j:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->B:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->E:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final x()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->B:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final y()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->z:I

    return p0
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m:Ljava/lang/String;

    return-void
.end method
