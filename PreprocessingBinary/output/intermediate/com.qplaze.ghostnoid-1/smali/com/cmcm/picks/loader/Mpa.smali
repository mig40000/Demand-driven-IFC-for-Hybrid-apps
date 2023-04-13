.class public Lcom/cmcm/picks/loader/Mpa;
.super Ljava/lang/Object;
.source "Mpa.java"


# instance fields
.field private ac:Ljava/lang/String;

.field private mpa_id:Ljava/lang/String;

.field private pic_url:Ljava/lang/String;

.field private pkg_url:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mpa_id"    # Ljava/lang/String;
    .param p2, "ac"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "pic_url"    # Ljava/lang/String;
    .param p5, "pkg_url"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/cmcm/picks/loader/Mpa;->mpa_id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/cmcm/picks/loader/Mpa;->ac:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/cmcm/picks/loader/Mpa;->title:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/cmcm/picks/loader/Mpa;->pic_url:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/cmcm/picks/loader/Mpa;->pkg_url:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getAc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmcm/picks/loader/Mpa;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getMpa_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmcm/picks/loader/Mpa;->mpa_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmcm/picks/loader/Mpa;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmcm/picks/loader/Mpa;->pkg_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmcm/picks/loader/Mpa;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAc(Ljava/lang/String;)V
    .locals 0
    .param p1, "ac"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmcm/picks/loader/Mpa;->ac:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMpa_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "mpa_id"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmcm/picks/loader/Mpa;->mpa_id:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPic_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic_url"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cmcm/picks/loader/Mpa;->pic_url:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPkg_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg_url"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmcm/picks/loader/Mpa;->pkg_url:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cmcm/picks/loader/Mpa;->title:Ljava/lang/String;

    .line 42
    return-void
.end method
